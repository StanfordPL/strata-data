  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movzbl %cl, %esi       #  1     0     3      OPC=movzbl_r32_r8   
  callq .clear_cf        #  2     0x3   5      OPC=callq_label     
  setb %bh               #  3     0x8   3      OPC=setb_rh         
  xorw %bx, %si          #  4     0xb   3      OPC=xorw_r16_r16    
  movswq %si, %rbx       #  5     0xe   4      OPC=movswq_r64_r16  
  callq .set_szp_for_bl  #  6     0x12  5      OPC=callq_label     
  retq                   #  7     0x17  1      OPC=retq            
                                                                   
.size target, .-target
