  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  mulps %xmm3, %xmm2                            #  1     0     3      OPC=mulps_xmm_xmm        
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x3   5      OPC=callq_label          
  vzeroall                                      #  3     0x8   3      OPC=vzeroall             
  movd %r12d, %xmm15                            #  4     0xb   5      OPC=movd_xmm_r32         
  vhaddps %ymm15, %ymm15, %ymm1                 #  5     0x10  5      OPC=vhaddps_ymm_ymm_ymm  
  retq                                          #  6     0x15  1      OPC=retq                 
                                                                                               
.size target, .-target
