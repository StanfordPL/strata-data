  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  movupd %xmm5, %xmm12                          #  2     0x5   5      OPC=movupd_xmm_xmm           
  andps %xmm12, %xmm3                           #  3     0xa   4      OPC=andps_xmm_xmm            
  vpunpckhqdq %xmm2, %xmm7, %xmm1               #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vaddsd %xmm1, %xmm3, %xmm11                   #  5     0x12  4      OPC=vaddsd_xmm_xmm_xmm       
  vandnps %ymm3, %ymm11, %ymm1                  #  6     0x16  4      OPC=vandnps_ymm_ymm_ymm      
  retq                                          #  7     0x1a  1      OPC=retq                     
                                                                                                   
.size target, .-target
