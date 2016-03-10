  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vzeroall                            #  1     0     3      OPC=vzeroall            
  vdivps %ymm12, %ymm15, %ymm2        #  2     0x3   5      OPC=vdivps_ymm_ymm_ymm  
  hsubps %xmm9, %xmm2                 #  3     0x8   5      OPC=hsubps_xmm_xmm      
  vpmovsxbq %xmm2, %ymm3              #  4     0xd   5      OPC=vpmovsxbq_ymm_xmm   
  callq .move_256_128_ymm3_xmm8_xmm9  #  5     0x12  5      OPC=callq_label         
  movhlps %xmm9, %xmm4                #  6     0x17  4      OPC=movhlps_xmm_xmm     
  vpmovsxbq %xmm4, %xmm1              #  7     0x1b  5      OPC=vpmovsxbq_xmm_xmm   
  retq                                #  8     0x20  1      OPC=retq                
                                                                                    
.size target, .-target
