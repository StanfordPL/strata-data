  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm6       #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movss %xmm1, %xmm6                    #  2     0x4   4      OPC=movss_xmm_xmm            
  vpmovsxbd %xmm6, %xmm3                #  3     0x8   5      OPC=vpmovsxbd_xmm_xmm        
  callq .move_256_128_ymm3_xmm10_xmm11  #  4     0xd   5      OPC=callq_label              
  movupd %xmm11, %xmm1                  #  5     0x12  5      OPC=movupd_xmm_xmm           
  retq                                  #  6     0x17  1      OPC=retq                     
                                                                                           
.size target, .-target
