  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movzbw %bh, %di                    #  1     0     4      OPC=movzbw_r16_rh   
  movswq %di, %rdx                   #  2     0x4   4      OPC=movswq_r64_r16  
  callq .move_064_032_rdx_r12d_r13d  #  3     0x8   5      OPC=callq_label     
  callq .set_cf                      #  4     0xd   5      OPC=callq_label     
  adcl %r13d, %ebx                   #  5     0x12  3      OPC=adcl_r32_r32    
  retq                               #  6     0x15  1      OPC=retq            
                                                                               
.size target, .-target
