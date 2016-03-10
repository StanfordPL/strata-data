  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vpmovzxbd %xmm2, %ymm3          #  1     0     5      OPC=vpmovzxbd_ymm_xmm     
  movq $0xffffffffffffff80, %rbp  #  2     0x5   10     OPC=movq_r64_imm64        
  movd %ebp, %xmm1                #  3     0xf   4      OPC=movd_xmm_r32          
  vbroadcastss %xmm1, %ymm4       #  4     0x13  5      OPC=vbroadcastss_ymm_xmm  
  vpaddd %ymm3, %ymm4, %ymm7      #  5     0x18  4      OPC=vpaddd_ymm_ymm_ymm    
  vxorpd %ymm7, %ymm4, %ymm1      #  6     0x1c  4      OPC=vxorpd_ymm_ymm_ymm    
  retq                            #  7     0x20  1      OPC=retq                  
                                                                                  
.size target, .-target
