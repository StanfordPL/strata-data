  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                   
.target:                          #        0     0      OPC=<label>              
  movq $0xffffffffffffffff, %rcx  #  1     0     10     OPC=movq_r64_imm64       
  vmovq %rcx, %xmm10              #  2     0xa   5      OPC=vmovq_xmm_r64        
  vpmovzxwd %xmm10, %xmm8         #  3     0xf   5      OPC=vpmovzxwd_xmm_xmm    
  maxps %xmm10, %xmm8             #  4     0x14  4      OPC=maxps_xmm_xmm        
  vandnpd %xmm2, %xmm8, %xmm1     #  5     0x18  4      OPC=vandnpd_xmm_xmm_xmm  
  pand %xmm3, %xmm8               #  6     0x1c  5      OPC=pand_xmm_xmm         
  orps %xmm8, %xmm1               #  7     0x21  4      OPC=orps_xmm_xmm         
  retq                            #  8     0x25  1      OPC=retq                 
                                                                                 
.size target, .-target
