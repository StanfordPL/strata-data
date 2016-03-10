  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vmovsldup %xmm1, %xmm3              #  1     0     4      OPC=vmovsldup_xmm_xmm     
  vmaxsd %xmm3, %xmm1, %xmm8          #  2     0x4   4      OPC=vmaxsd_xmm_xmm_xmm    
  movaps %xmm8, %xmm14                #  3     0x8   4      OPC=movaps_xmm_xmm        
  movq $0x1, %rbx                     #  4     0xc   10     OPC=movq_r64_imm64        
  vbroadcastss %xmm14, %ymm1          #  5     0x16  5      OPC=vbroadcastss_ymm_xmm  
  callq .move_byte_27_of_ymm1_to_r9b  #  6     0x1b  5      OPC=callq_label           
  callq .move_byte_30_of_ymm1_to_r8b  #  7     0x20  5      OPC=callq_label           
  callq .move_008_016_r8b_r9b_bx      #  8     0x25  5      OPC=callq_label           
  retq                                #  9     0x2a  1      OPC=retq                  
                                                                                      
.size target, .-target
