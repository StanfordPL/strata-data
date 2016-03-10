  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  sqrtps %xmm2, %xmm11                            #  2     0x5   4      OPC=sqrtps_xmm_xmm     
  vmovsldup %xmm2, %xmm2                          #  3     0x9   4      OPC=vmovsldup_xmm_xmm  
  vpor %xmm2, %xmm11, %xmm1                       #  4     0xd   4      OPC=vpor_xmm_xmm_xmm   
  vmovd %ebx, %xmm11                              #  5     0x11  4      OPC=vmovd_xmm_r32      
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x15  5      OPC=callq_label        
  retq                                            #  7     0x1a  1      OPC=retq               
                                                                                               
.size target, .-target
