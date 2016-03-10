  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_zf_into_rcx            #  1     0     5      OPC=callq_label   
  setnae %ch                         #  2     0x5   3      OPC=setnae_rh     
  callq .move_032_016_ecx_r12w_r13w  #  3     0x8   5      OPC=callq_label   
  xorw %r13w, %r12w                  #  4     0xd   4      OPC=xorw_r16_r16  
  setna %ah                          #  5     0x11  3      OPC=setna_rh      
  retq                               #  6     0x14  1      OPC=retq          
                                                                             
.size target, .-target
