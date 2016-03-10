  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movddup %xmm2, %xmm1              #  1     0     4      OPC=movddup_xmm_xmm         
  vmovdqu %xmm1, %xmm11             #  2     0x4   4      OPC=vmovdqu_xmm_xmm         
  vpunpckhdq %xmm11, %xmm2, %xmm12  #  3     0x8   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckhdq %ymm12, %ymm11, %ymm0  #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  punpcklqdq %xmm12, %xmm1          #  5     0x12  5      OPC=punpcklqdq_xmm_xmm      
  movsd %xmm0, %xmm1                #  6     0x17  4      OPC=movsd_xmm_xmm           
  retq                              #  7     0x1b  1      OPC=retq                    
                                                                                      
.size target, .-target
