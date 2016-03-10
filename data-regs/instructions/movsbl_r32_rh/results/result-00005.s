  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorl %edx, %edx          #  1     0     2      OPC=xorl_r32_r32   
  callq .read_cf_into_rbx  #  2     0x2   5      OPC=callq_label    
  adcw %bx, %bx            #  3     0x7   3      OPC=adcw_r16_r16   
  xaddb %ah, %bl           #  4     0xa   3      OPC=xaddb_r8_rh    
  movsbl %bl, %ebx         #  5     0xd   3      OPC=movsbl_r32_r8  
  retq                     #  6     0x10  1      OPC=retq           
                                                                    
.size target, .-target
