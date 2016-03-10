  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmulpd %xmm2, %xmm1, %xmm6         #  1     0     4      OPC=vmulpd_xmm_xmm_xmm       
  vpxor %ymm12, %ymm12, %ymm10       #  2     0x4   5      OPC=vpxor_ymm_ymm_ymm        
  vpunpcklqdq %xmm6, %xmm10, %xmm11  #  3     0x9   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  addsubpd %xmm10, %xmm11            #  4     0xd   5      OPC=addsubpd_xmm_xmm         
  movupd %xmm11, %xmm1               #  5     0x12  5      OPC=movupd_xmm_xmm           
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
