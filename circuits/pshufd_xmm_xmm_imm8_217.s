  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckldq %xmm2, %xmm2, %xmm11  #  1     0     4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm11, %xmm14  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm   
  movddup %xmm14, %xmm1            #  3     0x8   5      OPC=movddup_xmm_xmm         
  punpckhqdq %xmm14, %xmm1         #  4     0xd   5      OPC=punpckhqdq_xmm_xmm      
  retq                             #  5     0x12  1      OPC=retq                    
                                                                                     
.size target, .-target
