  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vpandn %xmm1, %xmm1, %xmm5                      #  1     0     4      OPC=vpandn_xmm_xmm_xmm       
  cvtsd2ss %xmm5, %xmm1                           #  2     0x4   4      OPC=cvtsd2ss_xmm_xmm         
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vpunpcklqdq %xmm1, %xmm9, %xmm9                 #  4     0xd   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpunpckhdq %xmm11, %xmm9, %xmm0                 #  5     0x11  5      OPC=vpunpckhdq_xmm_xmm_xmm   
  vandpd %ymm0, %ymm0, %ymm9                      #  6     0x16  4      OPC=vandpd_ymm_ymm_ymm       
  movlhps %xmm9, %xmm1                            #  7     0x1a  4      OPC=movlhps_xmm_xmm          
  retq                                            #  8     0x1e  1      OPC=retq                     
                                                                                                     
.size target, .-target
