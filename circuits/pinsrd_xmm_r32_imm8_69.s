  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  movd %ebx, %xmm12                  #  1     0     5      OPC=movd_xmm_r32            
  vpbroadcastd %xmm12, %xmm15        #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  vbroadcastsd %xmm1, %ymm14         #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm    
  vpunpckhdq %ymm15, %ymm14, %ymm11  #  4     0xf   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  movsd %xmm11, %xmm1                #  5     0x14  5      OPC=movsd_xmm_xmm           
  retq                               #  6     0x19  1      OPC=retq                    
                                                                                       
.size target, .-target
