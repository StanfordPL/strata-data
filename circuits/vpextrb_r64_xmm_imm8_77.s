  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                   
.target:                               #        0     0      OPC=<label>              
  pmovzxwq %xmm1, %xmm8                #  1     0     6      OPC=pmovzxwq_xmm_xmm     
  movmskpd %xmm8, %r8d                 #  2     0x6   5      OPC=movmskpd_r32_xmm     
  callq .move_byte_13_of_ymm1_to_r8b   #  3     0xb   5      OPC=callq_label          
  callq .move_128_64_xmm1_xmm12_xmm13  #  4     0x10  5      OPC=callq_label          
  vcvttss2sil %xmm13, %ebx             #  5     0x15  5      OPC=vcvttss2sil_r32_xmm  
  xchgl %r8d, %ebx                     #  6     0x1a  3      OPC=xchgl_r32_r32        
  orb %bh, %bh                         #  7     0x1d  2      OPC=orb_rh_rh            
  xchgb %bh, %bh                       #  8     0x1f  2      OPC=xchgb_rh_rh          
  retq                                 #  9     0x21  1      OPC=retq                 
                                                                                      
.size target, .-target
