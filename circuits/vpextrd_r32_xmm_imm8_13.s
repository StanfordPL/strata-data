  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vmovupd %xmm1, %xmm13           #  1     0     4      OPC=vmovupd_xmm_xmm    
  movq $0xfffffffffffffff0, %rbx  #  2     0x4   10     OPC=movq_r64_imm64     
  vmovshdup %xmm13, %xmm1         #  3     0xe   5      OPC=vmovshdup_xmm_xmm  
  andl %ebx, %ebx                 #  4     0x13  2      OPC=andl_r32_r32       
  movd %xmm1, %r14d               #  5     0x15  5      OPC=movd_r32_xmm       
  xchgl %r14d, %ebx               #  6     0x1a  3      OPC=xchgl_r32_r32      
  retq                            #  7     0x1d  1      OPC=retq               
                                                                               
.size target, .-target
