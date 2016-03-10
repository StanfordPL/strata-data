  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                  
.target:                   #        0     0      OPC=<label>             
  vpmovsxwq %xmm1, %ymm8   #  1     0     5      OPC=vpmovsxwq_ymm_xmm   
  vcvttps2dq %xmm8, %xmm5  #  2     0x5   5      OPC=vcvttps2dq_xmm_xmm  
  movhlps %xmm1, %xmm5     #  3     0xa   3      OPC=movhlps_xmm_xmm     
  vmovd %xmm5, %esi        #  4     0xd   4      OPC=vmovd_r32_xmm       
  movq $0x40, %rbx         #  5     0x11  10     OPC=movq_r64_imm64      
  xchgl %ebx, %esi         #  6     0x1b  2      OPC=xchgl_r32_r32       
  retq                     #  7     0x1d  1      OPC=retq                
                                                                         
.size target, .-target
