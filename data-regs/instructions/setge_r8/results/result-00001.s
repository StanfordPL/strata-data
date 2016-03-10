  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setno %ch                #  1     0    3      OPC=setno_rh     
  setns %dl                #  2     0x3  3      OPC=setns_r8     
  xorb %dl, %ch            #  3     0x6  2      OPC=xorb_rh_r8   
  callq .read_pf_into_rbx  #  4     0x8  5      OPC=callq_label  
  retq                     #  5     0xd  1      OPC=retq         
                                                                 
.size target, .-target
