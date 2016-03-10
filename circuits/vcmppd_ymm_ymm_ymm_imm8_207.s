  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                          
.target:                                #        0     0      OPC=<label>                     
  vzeroall                              #  1     0     3      OPC=vzeroall                    
  movq $0xffffffffffffffff, %rbp        #  2     0x3   10     OPC=movq_r64_imm64              
  vfnmsub132sd %xmm5, %xmm15, %xmm11    #  3     0xd   5      OPC=vfnmsub132sd_xmm_xmm_xmm    
  movq %rbp, %xmm10                     #  4     0x12  5      OPC=movq_xmm_r64                
  vfmsubadd231ps %xmm6, %xmm10, %xmm11  #  5     0x17  5      OPC=vfmsubadd231ps_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x1c  5      OPC=callq_label                 
  vpbroadcastd %xmm1, %ymm1             #  7     0x21  5      OPC=vpbroadcastd_ymm_xmm        
  retq                                  #  8     0x26  1      OPC=retq                        
                                                                                              
.size target, .-target
