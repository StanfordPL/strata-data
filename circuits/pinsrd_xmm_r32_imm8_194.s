  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm3                 #  1     0     4      OPC=vmovd_xmm_r32            
  vcvtss2sd %xmm1, %xmm1, %xmm9     #  2     0x4   4      OPC=vcvtss2sd_xmm_xmm_xmm    
  vpunpckhqdq %xmm3, %xmm9, %xmm11  #  3     0x8   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovss %xmm3, %xmm11, %xmm13      #  4     0xc   4      OPC=vmovss_xmm_xmm_xmm       
  punpcklqdq %xmm13, %xmm1          #  5     0x10  5      OPC=punpcklqdq_xmm_xmm       
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
