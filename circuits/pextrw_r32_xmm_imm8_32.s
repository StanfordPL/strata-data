  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  movq $0x1, %rbx          #  1     0     10     OPC=movq_r64_imm64     
  vpmovzxwq %xmm1, %xmm8   #  2     0xa   5      OPC=vpmovzxwq_xmm_xmm  
  vpmovsxdq %xmm8, %ymm15  #  3     0xf   5      OPC=vpmovsxdq_ymm_xmm  
  movq %xmm15, %r11        #  4     0x14  5      OPC=movq_r64_xmm       
  subb %bh, %bl            #  5     0x19  2      OPC=subb_r8_rh         
  cmovgew %r11w, %bx       #  6     0x1b  5      OPC=cmovgew_r16_r16    
  retq                     #  7     0x20  1      OPC=retq               
                                                                        
.size target, .-target
