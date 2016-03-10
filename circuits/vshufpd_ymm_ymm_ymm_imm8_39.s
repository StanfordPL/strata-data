  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  movsd %xmm2, %xmm2                #  1     0     4      OPC=movsd_xmm_xmm            
  punpckhqdq %xmm3, %xmm3           #  2     0x4   4      OPC=punpckhqdq_xmm_xmm       
  vmovddup %ymm3, %ymm14            #  3     0x8   4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm14, %ymm2, %ymm1  #  4     0xc   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
