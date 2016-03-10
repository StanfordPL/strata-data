  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  unpcklpd %xmm10, %xmm1               #  2     0x5   5      OPC=unpcklpd_xmm_xmm         
  vmovd %ebx, %xmm4                    #  3     0xa   4      OPC=vmovd_xmm_r32            
  vmovss %xmm4, %xmm11, %xmm15         #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %xmm15, %xmm1, %xmm9     #  5     0x12  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  punpckhqdq %xmm9, %xmm1              #  6     0x17  5      OPC=punpckhqdq_xmm_xmm       
  retq                                 #  7     0x1c  1      OPC=retq                     
                                                                                          
.size target, .-target
