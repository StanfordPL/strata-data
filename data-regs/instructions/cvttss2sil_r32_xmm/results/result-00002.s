  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vmovq %xmm1, %xmm9                 #  1     0     4      OPC=vmovq_xmm_xmm       
  vcvttps2dq %ymm9, %ymm1            #  2     0x4   5      OPC=vcvttps2dq_ymm_ymm  
  callq .move_128_064_xmm1_r12_r13   #  3     0x9   5      OPC=callq_label         
  negw %r13w                         #  4     0xe   4      OPC=negw_r16            
  callq .move_032_064_r12d_r13d_rbx  #  5     0x12  5      OPC=callq_label         
  retq                               #  6     0x17  1      OPC=retq                
                                                                                   
.size target, .-target
