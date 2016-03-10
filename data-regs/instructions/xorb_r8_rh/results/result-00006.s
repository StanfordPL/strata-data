  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movzbl %ah, %edx                   #  1     0     3      OPC=movzbl_r32_rh    
  movsbl %bl, %r10d                  #  2     0x3   4      OPC=movsbl_r32_r8    
  xorw %r10w, %dx                    #  3     0x7   4      OPC=xorw_r16_r16     
  callq .move_064_032_rdx_r10d_r11d  #  4     0xb   5      OPC=callq_label      
  callq .move_016_032_r10w_r11w_ebx  #  5     0x10  5      OPC=callq_label      
  popcntq %rdx, %r14                 #  6     0x15  5      OPC=popcntq_r64_r64  
  callq .set_szp_for_bl              #  7     0x1a  5      OPC=callq_label      
  retq                               #  8     0x1f  1      OPC=retq             
                                                                                
.size target, .-target
