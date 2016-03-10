  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_64_128_xmm8_xmm9_xmm3               #  2     0x5   5      OPC=callq_label              
  movd %ebx, %xmm14                               #  3     0xa   5      OPC=movd_xmm_r32             
  vpunpcklqdq %xmm3, %xmm14, %xmm6                #  4     0xf   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  unpcklps %xmm6, %xmm3                           #  5     0x13  3      OPC=unpcklps_xmm_xmm         
  vmovsd %xmm3, %xmm2, %xmm1                      #  6     0x16  4      OPC=vmovsd_xmm_xmm_xmm       
  retq                                            #  7     0x1a  1      OPC=retq                     
                                                                                                     
.size target, .-target
