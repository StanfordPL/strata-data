  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpbroadcastb %xmm1, %ymm12        #  1     0     5      OPC=vpbroadcastb_ymm_xmm    
  vpunpckhdq %xmm12, %xmm1, %xmm11  #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckhqdq %xmm11, %xmm11         #  3     0xa   5      OPC=punpckhqdq_xmm_xmm      
  vmovd %xmm11, %ebx                #  4     0xf   4      OPC=vmovd_r32_xmm           
  retq                              #  5     0x13  1      OPC=retq                    
                                                                                      
.size target, .-target
