  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  xaddq %rax, %rax         #  1     0     4      OPC=xaddq_r64_r64   
  callq .clear_zf          #  2     0x4   5      OPC=callq_label     
  callq .read_sf_into_rbx  #  3     0x9   5      OPC=callq_label     
  seta %dh                 #  4     0xe   3      OPC=seta_rh         
  cmovzw %bx, %dx          #  5     0x11  4      OPC=cmovzw_r16_r16  
  movzbl %dh, %edx         #  6     0x15  3      OPC=movzbl_r32_rh   
  decq %rdx                #  7     0x18  3      OPC=decq_r64        
  retq                     #  8     0x1b  1      OPC=retq            
                                                                     
.size target, .-target
