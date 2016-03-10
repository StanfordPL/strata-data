  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  xorl %edx, %edx                  #  1     0     2      OPC=xorl_r32_r32    
  callq .move_064_032_rdx_r8d_r9d  #  2     0x2   5      OPC=callq_label     
  movswq %r8w, %r9                 #  3     0x7   4      OPC=movswq_r64_r16  
  notq %r9                         #  4     0xb   3      OPC=notq_r64        
  xorb %dl, %bh                    #  5     0xe   2      OPC=xorb_rh_r8      
  adcq %r9, %rbx                   #  6     0x10  3      OPC=adcq_r64_r64    
  retq                             #  7     0x13  1      OPC=retq            
                                                                             
.size target, .-target
