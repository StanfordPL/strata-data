  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpxor %xmm8, %xmm8, %xmm4   #  1     0     5      OPC=vpxor_xmm_xmm_xmm     
  mulpd %xmm2, %xmm1          #  2     0x5   4      OPC=mulpd_xmm_xmm         
  vmovupd %ymm4, %ymm6        #  3     0x9   4      OPC=vmovupd_ymm_ymm       
  vpbroadcastb %xmm4, %xmm13  #  4     0xd   5      OPC=vpbroadcastb_xmm_xmm  
  addsubpd %xmm13, %xmm1      #  5     0x12  5      OPC=addsubpd_xmm_xmm      
  punpckhqdq %xmm6, %xmm1     #  6     0x17  4      OPC=punpckhqdq_xmm_xmm    
  retq                        #  7     0x1b  1      OPC=retq                  
                                                                              
.size target, .-target
