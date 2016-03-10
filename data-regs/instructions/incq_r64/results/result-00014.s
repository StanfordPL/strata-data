  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .set_zf            #  1     0    5      OPC=callq_label   
  callq .read_zf_into_rcx  #  2     0x5  5      OPC=callq_label   
  shlb $0x1, %ch           #  3     0xa  2      OPC=shlb_rh_one   
  addq %rcx, %rbx          #  4     0xc  3      OPC=addq_r64_r64  
  retq                     #  5     0xf  1      OPC=retq          
                                                                  
.size target, .-target
