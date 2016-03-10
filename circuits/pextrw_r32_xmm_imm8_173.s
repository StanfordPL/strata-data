  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vminpd %xmm1, %xmm1, %xmm1         #  1     0     4      OPC=vminpd_xmm_xmm_xmm  
  vmovsldup %ymm1, %ymm14            #  2     0x4   4      OPC=vmovsldup_ymm_ymm   
  punpckhqdq %xmm1, %xmm14           #  3     0x8   5      OPC=punpckhqdq_xmm_xmm  
  vmovd %xmm14, %ebx                 #  4     0xd   4      OPC=vmovd_r32_xmm       
  callq .move_032_016_ebx_r10w_r11w  #  5     0x11  5      OPC=callq_label         
  movzwq %r11w, %rbx                 #  6     0x16  4      OPC=movzwq_r64_r16      
  retq                               #  7     0x1a  1      OPC=retq                
                                                                                   
.size target, .-target
