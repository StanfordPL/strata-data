  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpmovzxwd %xmm1, %xmm10           #  1     0     5      OPC=vpmovzxwd_xmm_xmm       
  vpunpckhdq %ymm10, %ymm10, %ymm1  #  2     0x5   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  movd %xmm1, %edx                  #  3     0xa   4      OPC=movd_r32_xmm            
  movq $0x2, %rbx                   #  4     0xe   10     OPC=movq_r64_imm64          
  xchgb %dh, %bl                    #  5     0x18  2      OPC=xchgb_r8_rh             
  retq                              #  6     0x1a  1      OPC=retq                    
                                                                                      
.size target, .-target
