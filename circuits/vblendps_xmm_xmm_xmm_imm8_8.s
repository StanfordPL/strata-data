  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r12_r13          #  1     0     5      OPC=callq_label              
  vandnpd %xmm2, %xmm2, %xmm2               #  2     0x5   4      OPC=vandnpd_xmm_xmm_xmm      
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label              
  vpunpckhqdq %xmm3, %xmm2, %xmm8           #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  xorl %r8d, %r13d                          #  5     0x12  3      OPC=xorl_r32_r32             
  callq .move_064_128_r12_r13_xmm2          #  6     0x15  5      OPC=callq_label              
  vxorps %xmm2, %xmm8, %xmm1                #  7     0x1a  4      OPC=vxorps_xmm_xmm_xmm       
  retq                                      #  8     0x1e  1      OPC=retq                     
                                                                                               
.size target, .-target
