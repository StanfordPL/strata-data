  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vpmovzxwd %xmm1, %xmm8        #  1     0     5      OPC=vpmovzxwd_xmm_xmm     
  vrsqrtss %xmm1, %xmm8, %xmm3  #  2     0x5   4      OPC=vrsqrtss_xmm_xmm_xmm  
  xorb %bh, %bh                 #  3     0x9   2      OPC=xorb_rh_rh            
  movq $0x0, %rbx               #  4     0xb   10     OPC=movq_r64_imm64        
  vmovshdup %ymm3, %ymm12       #  5     0x15  4      OPC=vmovshdup_ymm_ymm     
  movq %xmm12, %r15             #  6     0x19  5      OPC=movq_r64_xmm          
  cmovgew %r15w, %bx            #  7     0x1e  5      OPC=cmovgew_r16_r16       
  retq                          #  8     0x23  1      OPC=retq                  
                                                                                
.size target, .-target
