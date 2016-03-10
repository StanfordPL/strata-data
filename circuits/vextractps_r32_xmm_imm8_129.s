  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vsqrtss %xmm1, %xmm1, %xmm14     #  1     0     4      OPC=vsqrtss_xmm_xmm_xmm    
  movsd %xmm1, %xmm14              #  2     0x4   5      OPC=movsd_xmm_xmm          
  movq $0x81, %rbx                 #  3     0x9   10     OPC=movq_r64_imm64         
  vcvtsd2ss %xmm14, %xmm14, %xmm9  #  4     0x13  5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  vmovshdup %ymm9, %ymm9           #  5     0x18  5      OPC=vmovshdup_ymm_ymm      
  vmovd %xmm9, %r13d               #  6     0x1d  5      OPC=vmovd_r32_xmm          
  xaddq %rbx, %r13                 #  7     0x22  4      OPC=xaddq_r64_r64          
  retq                             #  8     0x26  1      OPC=retq                   
                                                                                    
.size target, .-target
