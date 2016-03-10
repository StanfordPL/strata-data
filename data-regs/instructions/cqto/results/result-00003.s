  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpxor %xmm15, %xmm15, %xmm11    #  1     0     5      OPC=vpxor_xmm_xmm_xmm       
  vpmovzxbq %xmm11, %xmm0         #  2     0x5   5      OPC=vpmovzxbq_xmm_xmm       
  vpunpckhdq %ymm0, %ymm0, %ymm1  #  3     0xa   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  movq $0xffffffffffffffff, %rdx  #  4     0xe   10     OPC=movq_r64_imm64          
  cvttss2sil %xmm1, %esi          #  5     0x18  4      OPC=cvttss2sil_r32_xmm      
  shlq $0x1, %rax                 #  6     0x1c  3      OPC=shlq_r64_one            
  cmovncq %rsi, %rdx              #  7     0x1f  4      OPC=cmovncq_r64_r64         
  retq                            #  8     0x23  1      OPC=retq                    
                                                                                    
.size target, .-target
