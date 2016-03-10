  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovddup %ymm2, %ymm10            #  1     0    4      OPC=vmovddup_ymm_ymm         
  movups %xmm2, %xmm10              #  2     0x4  4      OPC=movups_xmm_xmm           
  vpunpckhqdq %ymm3, %ymm10, %ymm1  #  3     0x8  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movlhps %xmm3, %xmm1              #  4     0xc  3      OPC=movlhps_xmm_xmm          
  retq                              #  5     0xf  1      OPC=retq                     
                                                                                      
.size target, .-target
