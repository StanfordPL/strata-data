  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label     
  movq $0x5, %rdx          #  2     0x5   10     OPC=movq_r64_imm64  
  xchgw %dx, %bx           #  3     0xf   3      OPC=xchgw_r16_r16   
  callq .write_dl_to_pf    #  4     0x12  5      OPC=callq_label     
  setnp %ah                #  5     0x17  3      OPC=setnp_rh        
  retq                     #  6     0x1a  1      OPC=retq            
                                                                     
.size target, .-target
