  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpcklps %xmm2, %xmm2, %xmm7    #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm    
  vrsqrtps %xmm2, %xmm10           #  2     0x4   4      OPC=vrsqrtps_xmm_xmm         
  vmovss %xmm2, %xmm2, %xmm9       #  3     0x8   4      OPC=vmovss_xmm_xmm_xmm       
  phsubd %xmm10, %xmm7             #  4     0xc   6      OPC=phsubd_xmm_xmm           
  vpunpcklqdq %xmm9, %xmm7, %xmm9  #  5     0x12  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  punpckhqdq %xmm9, %xmm1          #  6     0x17  5      OPC=punpckhqdq_xmm_xmm       
  retq                             #  7     0x1c  1      OPC=retq                     
                                                                                      
.size target, .-target
