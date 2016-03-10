  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  xorw %sp, %sp                      #  1     0     3      OPC=xorw_r16_r16       
  vmovddup %xmm1, %xmm9              #  2     0x3   4      OPC=vmovddup_xmm_xmm   
  callq .read_of_into_rbx            #  3     0x7   5      OPC=callq_label        
  vcvtps2dq %ymm9, %ymm8             #  4     0xc   5      OPC=vcvtps2dq_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm2  #  5     0x11  5      OPC=callq_label        
  roll $0x1, %ebx                    #  6     0x16  2      OPC=roll_r32_one       
  callq .move_128_064_xmm2_r10_r11   #  7     0x18  5      OPC=callq_label        
  xchgl %r10d, %ebx                  #  8     0x1d  3      OPC=xchgl_r32_r32      
  retq                               #  9     0x20  1      OPC=retq               
                                                                                  
.size target, .-target
