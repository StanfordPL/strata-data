  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpmovzxwd %xmm1, %xmm13          #  1     0     5      OPC=vpmovzxwd_xmm_xmm       
  movq $0xfffffffffffffff8, %rbx   #  2     0x5   10     OPC=movq_r64_imm64          
  subq %rbx, %rbx                  #  3     0xf   3      OPC=subq_r64_r64            
  vcvtsi2sdl %ebx, %xmm13, %xmm12  #  4     0x12  4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  vmovhlps %xmm12, %xmm12, %xmm14  #  5     0x16  5      OPC=vmovhlps_xmm_xmm_xmm    
  vmovd %xmm14, %ebx               #  6     0x1b  4      OPC=vmovd_r32_xmm           
  retq                             #  7     0x1f  1      OPC=retq                    
                                                                                     
.size target, .-target
