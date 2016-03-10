  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm6    #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovaps %xmm6, %xmm11           #  2     0x4   4      OPC=vmovaps_xmm_xmm       
  movq %xmm11, %r10               #  3     0x8   5      OPC=movq_r64_xmm          
  movq $0xfffffffffffffffd, %rbx  #  4     0xd   10     OPC=movq_r64_imm64        
  xchgl %r10d, %ebx               #  5     0x17  3      OPC=xchgl_r32_r32         
  retq                            #  6     0x1a  1      OPC=retq                  
                                                                                  
.size target, .-target
