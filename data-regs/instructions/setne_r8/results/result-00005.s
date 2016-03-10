  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label     
  movq %rcx, %r12          #  2     0x5   3      OPC=movq_r64_r64    
  decw %cx                 #  3     0x8   3      OPC=decw_r16        
  movslq %ecx, %r9         #  4     0xb   3      OPC=movslq_r64_r32  
  xorw %r9w, %r12w         #  5     0xe   4      OPC=xorw_r16_r16    
  callq .read_pf_into_rbx  #  6     0x12  5      OPC=callq_label     
  retq                     #  7     0x17  1      OPC=retq            
                                                                     
.size target, .-target
