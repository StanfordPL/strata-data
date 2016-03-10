  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  movsldup %xmm2, %xmm14            #  1     0     5      OPC=movsldup_xmm_xmm         
  vpunpcklqdq %xmm14, %xmm2, %xmm5  #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movaps %xmm2, %xmm3               #  3     0xa   3      OPC=movaps_xmm_xmm           
  vpunpckhdq %xmm3, %xmm3, %xmm7    #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vunpckhps %xmm7, %xmm5, %xmm9     #  5     0x11  4      OPC=vunpckhps_xmm_xmm_xmm    
  movapd %xmm9, %xmm1               #  6     0x15  5      OPC=movapd_xmm_xmm           
  retq                              #  7     0x1a  1      OPC=retq                     
                                                                                       
.size target, .-target
