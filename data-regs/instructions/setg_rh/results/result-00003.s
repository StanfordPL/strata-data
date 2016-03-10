  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x0, %rax          #  1     0     10     OPC=movq_r64_imm64  
  callq .clear_cf          #  2     0xa   5      OPC=callq_label     
  notw %ax                 #  3     0xf   3      OPC=notw_r16        
  callq .read_zf_into_rbx  #  4     0x12  5      OPC=callq_label     
  setnle %ah               #  5     0x17  3      OPC=setnle_rh       
  sbbw %bx, %ax            #  6     0x1a  3      OPC=sbbw_r16_r16    
  retq                     #  7     0x1d  1      OPC=retq            
                                                                     
.size target, .-target
