  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  punpcklqdq %xmm2, %xmm1         #  1     0     4      OPC=punpcklqdq_xmm_xmm     
  vmovddup %xmm1, %xmm4           #  2     0x4   4      OPC=vmovddup_xmm_xmm       
  vunpckhps %xmm1, %xmm4, %xmm14  #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm  
  movapd %xmm14, %xmm1            #  4     0xc   5      OPC=movapd_xmm_xmm         
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
