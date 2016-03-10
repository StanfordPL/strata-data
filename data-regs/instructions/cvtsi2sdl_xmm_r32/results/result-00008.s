  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movzbl %bh, %esi                #  1     0     3      OPC=movzbl_r32_rh           
  andnl %esi, %esi, %r9d          #  2     0x3   5      OPC=andnl_r32_r32_r32       
  vmovd %r9d, %xmm10              #  3     0x8   5      OPC=vmovd_xmm_r32           
  vcvtsi2sdl %ebx, %xmm10, %xmm8  #  4     0xd   4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  movsd %xmm8, %xmm1              #  5     0x11  5      OPC=movsd_xmm_xmm           
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target
