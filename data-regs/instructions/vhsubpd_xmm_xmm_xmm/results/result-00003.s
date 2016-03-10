  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm3, %xmm2, %xmm6  #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  unpcklpd %xmm3, %xmm2            #  2     0x4   4      OPC=unpcklpd_xmm_xmm         
  vmovdqu %xmm2, %xmm1             #  3     0x8   4      OPC=vmovdqu_xmm_xmm          
  subpd %xmm6, %xmm1               #  4     0xc   4      OPC=subpd_xmm_xmm            
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
