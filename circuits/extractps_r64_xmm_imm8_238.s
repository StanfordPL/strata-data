  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vpmovsxbq %xmm6, %ymm3                        #  2     0x5   5      OPC=vpmovsxbq_ymm_xmm      
  movq $0x40, %rbx                              #  3     0xa   10     OPC=movq_r64_imm64         
  addb %bl, %bh                                 #  4     0x14  2      OPC=addb_rh_r8             
  vunpcklpd %xmm3, %xmm6, %xmm0                 #  5     0x16  4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovd %xmm0, %esp                             #  6     0x1a  4      OPC=vmovd_r32_xmm          
  cmovnel %esp, %ebx                            #  7     0x1e  3      OPC=cmovnel_r32_r32        
  retq                                          #  8     0x21  1      OPC=retq                   
                                                                                                 
.size target, .-target
