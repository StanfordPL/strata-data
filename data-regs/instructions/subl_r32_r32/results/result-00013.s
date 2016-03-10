  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  callq .move_032_016_ecx_r10w_r11w  #  1     0    5      OPC=callq_label    
  movzbq %r11b, %r14                 #  2     0x5  4      OPC=movzbq_r64_r8  
  cmpw %r14w, %r14w                  #  3     0x9  4      OPC=cmpw_r16_r16   
  sbbl %ecx, %ebx                    #  4     0xd  2      OPC=sbbl_r32_r32   
  retq                               #  5     0xf  1      OPC=retq           
                                                                             
.size target, .-target
