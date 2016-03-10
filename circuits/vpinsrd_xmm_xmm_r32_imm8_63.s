  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm9                #  1     0     4      OPC=vmovd_xmm_r32            
  vpunpckhqdq %xmm9, %xmm2, %xmm3  #  2     0x4   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  unpcklps %xmm9, %xmm3            #  3     0x9   4      OPC=unpcklps_xmm_xmm         
  movlhps %xmm3, %xmm2             #  4     0xd   3      OPC=movlhps_xmm_xmm          
  vmovups %xmm2, %xmm1             #  5     0x10  4      OPC=vmovups_xmm_xmm          
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
