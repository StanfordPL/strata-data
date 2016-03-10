  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                      #  Line  RIP   Bytes  Opcode                  
.target:                    #        0     0      OPC=<label>             
  vmovdqu %xmm1, %xmm5      #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vcvttpd2dq %ymm5, %xmm13  #  2     0x4   4      OPC=vcvttpd2dq_xmm_ymm  
  vcvtdq2ps %ymm13, %ymm15  #  3     0x8   5      OPC=vcvtdq2ps_ymm_ymm   
  movd %xmm13, %r8d         #  4     0xd   5      OPC=movd_r32_xmm        
  vcvtss2sil %xmm15, %ebx   #  5     0x12  5      OPC=vcvtss2sil_r32_xmm  
  xchgl %r8d, %ebx          #  6     0x17  3      OPC=xchgl_r32_r32       
  movl %ebx, %ebx           #  7     0x1a  2      OPC=movl_r32_r32        
  retq                      #  8     0x1c  1      OPC=retq                
                                                                          
.size target, .-target
