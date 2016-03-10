  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpmovzxwq %xmm1, %xmm2          #  1     0     5      OPC=vpmovzxwq_xmm_xmm      
  vunpckhpd %ymm2, %ymm2, %ymm14  #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movq %xmm14, %rbx               #  3     0x9   5      OPC=movq_r64_xmm           
  orb %bl, %bl                    #  4     0xe   2      OPC=orb_r8_r8              
  retq                            #  5     0x10  1      OPC=retq                   
                                                                                   
.size target, .-target
