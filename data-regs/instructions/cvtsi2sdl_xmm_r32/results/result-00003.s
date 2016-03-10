  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                      
.target:                         #        0    0      OPC=<label>                 
  vcvtsi2sdl %ebx, %xmm1, %xmm5  #  1     0    4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  movddup %xmm5, %xmm1           #  2     0x4  4      OPC=movddup_xmm_xmm         
  punpckhqdq %xmm5, %xmm1        #  3     0x8  4      OPC=punpckhqdq_xmm_xmm      
  retq                           #  4     0xc  1      OPC=retq                    
                                                                                  
.size target, .-target
