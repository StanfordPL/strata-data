  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movzbl %ah, %edx         #  1     0     3      OPC=movzbl_r32_rh  
  xaddb %ah, %bl           #  2     0x3   3      OPC=xaddb_r8_rh    
  setb %bh                 #  3     0x6   3      OPC=setb_rh        
  adcw %bx, %bx            #  4     0x9   3      OPC=adcw_r16_r16   
  callq .read_cf_into_rbx  #  5     0xc   5      OPC=callq_label    
  xorq %rdx, %rbx          #  6     0x11  3      OPC=xorq_r64_r64   
  retq                     #  7     0x14  1      OPC=retq           
                                                                    
.size target, .-target
