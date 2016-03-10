  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64  
  callq .read_zf_into_rbx  #  2     0x3   5      OPC=callq_label   
  notw %ax                 #  3     0x8   3      OPC=notw_r16      
  adcb %bl, %bl            #  4     0xb   2      OPC=adcb_r8_r8    
  adcw %bx, %bx            #  5     0xd   3      OPC=adcw_r16_r16  
  cbtw                     #  6     0x10  2      OPC=cbtw          
  adcb %al, %al            #  7     0x12  2      OPC=adcb_r8_r8    
  retq                     #  8     0x14  1      OPC=retq          
                                                                   
.size target, .-target
