  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorq %rax, %rax          #  1     0     3      OPC=xorq_r64_r64   
  incw %ax                 #  2     0x3   3      OPC=incw_r16       
  adcb %bl, %al            #  3     0x6   2      OPC=adcb_r8_r8     
  callq .read_cf_into_rbx  #  4     0x8   5      OPC=callq_label    
  xchgw %ax, %bx           #  5     0xd   3      OPC=xchgw_r16_r16  
  movsbq %bl, %rbx         #  6     0x10  4      OPC=movsbq_r64_r8  
  retq                     #  7     0x14  1      OPC=retq           
                                                                    
.size target, .-target
